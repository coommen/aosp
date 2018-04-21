# Format of PRODUCT_MAKEFILES:
# <product_name>:<path_to_the_product_makefile>
# If the <product_name> is the same as the base file name (without dir
# and the .mk suffix) of the product makefile, "<product_name>:" can be
# omitted.
PRODUCT_MAKEFILES := samsdroid_cruise:$(LOCAL_DIR)/full_samsdroid_cruise.mk
