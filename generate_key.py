""" dbt needs a private key to connect with Snowflake. """

import os

def main():
    """ This function copies the private SSH key to a file. """
    begin = "-----BEGIN PRIVATE KEY-----"
    end = "-----END PRIVATE KEY-----"
    private_key_fp = f"{os.getenv('GITPOD_REPO_ROOT')}/profiles/private_key.p8"
    private_key = os.getenv('DBT_SNOWFLAKE_PRIVATE_KEY')
    private_key_extracted = private_key.replace(begin, "").replace(end, "").strip()
    private_key_nl = private_key_extracted.replace(" ", "\n")
    with open(private_key_fp, mode="w", encoding="utf-8") as out:
        out.write(begin + "\n")
        out.write(private_key_nl + "\n")
        out.write(end)
    return True


if __name__ == "__main__":
    main()
