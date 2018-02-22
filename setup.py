from setuptools import setup, find_packages

scm = "https://x-token-auth:{AUTH_TOKEN}@bitbucket.org/salway/"

setup(
    name='sample-code',
    version='1.0',
    packages=find_packages(),
    install_requires=['nose', 'coverage', 'pylint'],
    dependency_links=[
        scm + "cyrm_common.git/master#egg=cyrm_common"
    ]
)
