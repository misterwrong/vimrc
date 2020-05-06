@RequestMapping(value = "/edit", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
public ResponseEntity<Object> edit(final Integer id, final String value)
{
    Optional<Item> optionalItem = itemRepository.findById(id);
    if (!optionalItem.isPresent()) 
    {
        return ResponseEntity
    groceryRepository.saveAndFlush(item.getGrocery());
    itemRepository.saveAndFlush(item);

    return ResponseEntity.ok(item.getFormatted());
}
