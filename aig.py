import os
import sys
from groq import Groq


def main():
    if len(sys.argv) < 2:
        print("Usage: aig <prompt>")
        sys.exit(1)

    prompt = " ".join(sys.argv[1:])
    api_key = os.environ.get("GROQ_API_KEY")

    if not api_key:
        print("Error: GROQ_API_KEY environment variable not set")
        sys.exit(1)

    client = Groq(api_key=api_key)

    chat_completion = client.chat.completions.create(
        messages=[
            {
                "role": "user",
                "content": prompt,
            }
        ],
        model="llama3-70b-8192",
    )

    print(chat_completion.choices[0].message.content)


if __name__ == "__main__":
    main()
