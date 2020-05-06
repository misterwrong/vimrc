@RequestMapping(value = "/get/{id}", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
public ResponseEntity<Object> get(@PathVariable final Integer id)
{
    Optional<Item> optionalItem = itemRepository.findById(id);
    if (!optionalItem.isPresent()) 
    {
        return ResponseEntity
            .status(HttpStatus.NOT_FOUND)
            .body(MessageUtil.parse(MSG_404_ITEM, id + ""));
    }
    return ResponseEntity.ok(optionalItem.get());
}
