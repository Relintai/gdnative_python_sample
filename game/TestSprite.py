from pandemonium import exposed, export
from pandemonium import *
import math 


@exposed
class TestSprite(Sprite):

	# member variables here, example:
	#a = export(int)
	#b = export(str, default='foo')
	
	adelta = 0.0

	def _ready(self):
		"""
		Called every time the node is added to the scene.
		Initialization here.
		"""
		pass
		
	def _process(self, delta):
		self.adelta += delta * 10
		self.position = Vector2(math.sin(self.adelta) * 40, math.cos(self.adelta) * 40)
