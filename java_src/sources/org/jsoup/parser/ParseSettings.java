package org.jsoup.parser;

import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attributes;

/* JADX INFO: loaded from: classes10.dex */
public class ParseSettings {
    public static final ParseSettings htmlDefault = new ParseSettings(false, false);
    public static final ParseSettings preserveCase = new ParseSettings(true, true);
    private final boolean preserveAttributeCase;
    private final boolean preserveTagCase;

    Attributes normalizeAttributes(Attributes attributes) {
        if (!this.preserveAttributeCase) {
            attributes.normalize();
        }
        return attributes;
    }

    public ParseSettings(boolean z6, boolean z10) {
        this.preserveTagCase = z6;
        this.preserveAttributeCase = z10;
    }

    String normalizeAttribute(String str) {
        String strTrim = str.trim();
        if (!this.preserveAttributeCase) {
            return Normalizer.lowerCase(strTrim);
        }
        return strTrim;
    }

    String normalizeTag(String str) {
        String strTrim = str.trim();
        if (!this.preserveTagCase) {
            return Normalizer.lowerCase(strTrim);
        }
        return strTrim;
    }
}
