Handlebars.registerHelper 'buildPagination', (collection) ->
  $outEl = $('<div class="pagination">')

  pagesCount = Math.ceil collection.totalCount / collection.itemsPerPage

  previousPageIndex = Math.min 0, collection.page - 1

  $liEl = buildPaginationItem '&laquo;', 'page-back', collection.page is 0, 'disabled', previousPageIndex, collection
  $outEl.append $liEl

  startIndex = Math.max collection.page - 3, 0
  endIndex = Math.min startIndex + 6, Math.max(0, pagesCount - 1)

  return '' if endIndex - startIndex is 0

  for pageIndex in [startIndex..endIndex]
    $liEl = buildPaginationItem pageIndex + 1, 'page-number', pageIndex is collection.page, 'active', pageIndex, collection
    $outEl.append $liEl

  nextPageIndex = Math.min collection.page + 1, Math.ceil(collection.totalCount / collection.itemsPerPage)

  $liEl = buildPaginationItem '&raquo;', 'page-forward', (collection.page is pagesCount - 1) or pagesCount is 0, 'disabled', nextPageIndex, collection
  $outEl.append $liEl

  $outEl[0].outerHTML

buildPaginationItem = (htmlText, className, condition, conditionalClassName, pageIndex, collection) ->
  query = collection.query
  href = "/#/?page=#{pageIndex + 1}"
  href = "#{href}&q=#{query}" if query?

  $liEl = $ '<li>'
  $liEl.addClass className
  $liEl.addClass(conditionalClassName) if condition
  $aEl = $('<a>').html htmlText
  $aEl.prop('href', href);
  $liEl.append $aEl

  $liEl
