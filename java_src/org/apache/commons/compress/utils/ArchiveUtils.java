package org.apache.commons.compress.utils;

import java.lang.Character;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ArchiveUtils {
    private static final int MAX_SANITIZED_NAME_LENGTH = 255;

    public static String sanitize(String str) {
        Character.UnicodeBlock unicodeBlockOf;
        char[] charArray = str.toCharArray();
        char[] cArrCopyOf = charArray.length <= 255 ? charArray : Arrays.copyOf(charArray, 255);
        if (charArray.length > 255) {
            for (int i = 252; i < 255; i++) {
                cArrCopyOf[i] = '.';
            }
        }
        StringBuilder sb = new StringBuilder();
        for (char c : cArrCopyOf) {
            if (!Character.isISOControl(c) && (unicodeBlockOf = Character.UnicodeBlock.of(c)) != null && unicodeBlockOf != Character.UnicodeBlock.SPECIALS) {
                sb.append(c);
            } else {
                sb.append('?');
            }
        }
        return sb.toString();
    }
}
