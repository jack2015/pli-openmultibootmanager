from distutils.core import setup
import setup_translate


setup(name = 'enigma2-plugin-extensions-openmultiboot',
		version='1.9',
		author='oe-alliance/Dimitrij',
		author_email='dima-73@inbox.lv',
		package_dir = {'Extensions.OpenMultiboot': 'src'},
		packages=['Extensions.OpenMultiboot'],
		package_data={'Extensions.OpenMultiboot': ['*.png', 'locale/*/LC_MESSAGES/*.mo', 'readme', 'subprocess.02', 'subprocess.03', '*.sh']},
		description = 'Multi boot loader manager for enigma2 box',
		cmdclass = setup_translate.cmdclass,
	)

