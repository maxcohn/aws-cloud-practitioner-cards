# Validate that the cards.yaml file follows the correct format
import yaml

card_data = None
with open('./cards.yaml') as f:
    card_data = yaml.safe_load(f)

for card in card_data['cards']:
    assert isinstance(card['question'], str)
    assert isinstance(card['answer'], str)

print(f"total cards: {len(card_data['cards'])}")