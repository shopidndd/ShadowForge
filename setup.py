from setuptools import setup, find_packages

setup(
    name="ShadowForge",
    version="1.0.0",
    description="ShadowForge: Advanced Command-and-Control (C2) Server Framework",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    author="Your Name",
    author_email="your.email@example.com",
    url="https://github.com/your-repo/shadowforge",
    packages=find_packages(exclude=["tests", "scripts", "static", "configs"]),
    include_package_data=True,
    package_data={
        "": ["*.yaml", "*.html", "*.sh"],
        "static": ["ui/assets/*", "ui/index.html"],
    },
    install_requires=open("requirements.txt").read().splitlines(),
    entry_points={
        "console_scripts": [
            "shadowforge=ShadowForge.c2_server.app:main",
        ],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: Security",
        "Intended Audience :: Developers",
        "Intended Audience :: Information Technology",
    ],
    python_requires=">=3.8",
    license="MIT",
)
