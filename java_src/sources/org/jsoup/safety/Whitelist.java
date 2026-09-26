package org.jsoup.safety;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.webkit.ProxyConfig;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
public class Whitelist {
    private Set<TagName> tagNames = new HashSet();
    private Map<TagName, Set<AttributeKey>> attributes = new HashMap();
    private Map<TagName, Map<AttributeKey, AttributeValue>> enforcedAttributes = new HashMap();
    private Map<TagName, Map<AttributeKey, Set<Protocol>>> protocols = new HashMap();
    private boolean preserveRelativeLinks = false;

    static class AttributeKey extends TypedValue {
        static AttributeKey valueOf(String str) {
            return new AttributeKey(str);
        }

        AttributeKey(String str) {
            super(str);
        }
    }

    static class AttributeValue extends TypedValue {
        static AttributeValue valueOf(String str) {
            return new AttributeValue(str);
        }

        AttributeValue(String str) {
            super(str);
        }
    }

    static class Protocol extends TypedValue {
        static Protocol valueOf(String str) {
            return new Protocol(str);
        }

        Protocol(String str) {
            super(str);
        }
    }

    static class TagName extends TypedValue {
        static TagName valueOf(String str) {
            return new TagName(str);
        }

        TagName(String str) {
            super(str);
        }
    }

    static abstract class TypedValue {
        private String value;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            TypedValue typedValue = (TypedValue) obj;
            String str = this.value;
            if (str == null) {
                if (typedValue.value != null) {
                    return false;
                }
            } else if (!str.equals(typedValue.value)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return this.value;
        }

        public int hashCode() {
            String str = this.value;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        TypedValue(String str) {
            Validate.notNull(str);
            this.value = str;
        }
    }

    public Whitelist preserveRelativeLinks(boolean z6) {
        this.preserveRelativeLinks = z6;
        return this;
    }

    public static Whitelist basic() {
        return new Whitelist().addTags(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "blockquote", "br", "cite", "code", "dd", "dl", "dt", "em", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "li", "ol", "p", "pre", "q", "small", "span", "strike", "strong", "sub", "sup", "u", "ul").addAttributes(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "href").addAttributes("blockquote", "cite").addAttributes("q", "cite").addProtocols(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "href", "ftp", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS, "mailto").addProtocols("blockquote", "cite", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS).addProtocols("cite", "cite", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS).addEnforcedAttribute(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "rel", "nofollow");
    }

    private boolean isValidAnchor(String str) {
        return str.startsWith("#") && !str.matches(".*\\s.*");
    }

    public static Whitelist none() {
        return new Whitelist();
    }

    public static Whitelist relaxed() {
        return new Whitelist().addTags(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "img", "li", "ol", "p", "pre", "q", "small", "span", "strike", "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul").addAttributes(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "href", "title").addAttributes("blockquote", "cite").addAttributes("col", "span", "width").addAttributes("colgroup", "span", "width").addAttributes("img", "align", "alt", "height", "src", "title", "width").addAttributes("ol", "start", "type").addAttributes("q", "cite").addAttributes("table", "summary", "width").addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width").addAttributes("th", "abbr", "axis", "colspan", "rowspan", "scope", "width").addAttributes("ul", "type").addProtocols(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "href", "ftp", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS, "mailto").addProtocols("blockquote", "cite", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS).addProtocols("cite", "cite", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS).addProtocols("img", "src", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS).addProtocols("q", "cite", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS);
    }

    public static Whitelist simpleText() {
        return new Whitelist().addTags("b", "em", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "strong", "u");
    }

    Attributes getEnforcedAttributes(String str) {
        Attributes attributes = new Attributes();
        TagName tagNameValueOf = TagName.valueOf(str);
        if (this.enforcedAttributes.containsKey(tagNameValueOf)) {
            for (Map.Entry<AttributeKey, AttributeValue> entry : this.enforcedAttributes.get(tagNameValueOf).entrySet()) {
                attributes.put(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return attributes;
    }

    protected boolean isSafeTag(String str) {
        return this.tagNames.contains(TagName.valueOf(str));
    }

    public static Whitelist basicWithImages() {
        return basic().addTags("img").addAttributes("img", "align", "alt", "height", "src", "title", "width").addProtocols("img", "src", ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS);
    }

    private boolean testValidProtocol(Element element, Attribute attribute, Set<Protocol> set) {
        String strAbsUrl = element.absUrl(attribute.getKey());
        if (strAbsUrl.length() == 0) {
            strAbsUrl = attribute.getValue();
        }
        if (!this.preserveRelativeLinks) {
            attribute.setValue(strAbsUrl);
        }
        Iterator<Protocol> it = set.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            if (string.equals("#")) {
                if (isValidAnchor(strAbsUrl)) {
                    return true;
                }
            } else {
                if (Normalizer.lowerCase(strAbsUrl).startsWith(string + ":")) {
                    return true;
                }
            }
        }
        return false;
    }

    public Whitelist addAttributes(String str, String... strArr) {
        boolean z6;
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        if (strArr.length > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Validate.isTrue(z6, "No attribute names supplied.");
        TagName tagNameValueOf = TagName.valueOf(str);
        if (!this.tagNames.contains(tagNameValueOf)) {
            this.tagNames.add(tagNameValueOf);
        }
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.attributes.containsKey(tagNameValueOf)) {
            this.attributes.get(tagNameValueOf).addAll(hashSet);
        } else {
            this.attributes.put(tagNameValueOf, hashSet);
        }
        return this;
    }

    public Whitelist addEnforcedAttribute(String str, String str2, String str3) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notEmpty(str3);
        TagName tagNameValueOf = TagName.valueOf(str);
        if (!this.tagNames.contains(tagNameValueOf)) {
            this.tagNames.add(tagNameValueOf);
        }
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        AttributeValue attributeValueValueOf = AttributeValue.valueOf(str3);
        if (this.enforcedAttributes.containsKey(tagNameValueOf)) {
            this.enforcedAttributes.get(tagNameValueOf).put(attributeKeyValueOf, attributeValueValueOf);
        } else {
            HashMap map = new HashMap();
            map.put(attributeKeyValueOf, attributeValueValueOf);
            this.enforcedAttributes.put(tagNameValueOf, map);
        }
        return this;
    }

    public Whitelist addProtocols(String str, String str2, String... strArr) {
        Map<AttributeKey, Set<Protocol>> map;
        Set<Protocol> set;
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        if (this.protocols.containsKey(tagNameValueOf)) {
            map = this.protocols.get(tagNameValueOf);
        } else {
            HashMap map2 = new HashMap();
            this.protocols.put(tagNameValueOf, map2);
            map = map2;
        }
        if (map.containsKey(attributeKeyValueOf)) {
            set = map.get(attributeKeyValueOf);
        } else {
            HashSet hashSet = new HashSet();
            map.put(attributeKeyValueOf, hashSet);
            set = hashSet;
        }
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(Protocol.valueOf(str3));
        }
        return this;
    }

    public Whitelist addTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            this.tagNames.add(TagName.valueOf(str));
        }
        return this;
    }

    protected boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(attribute.getKey());
        Set<AttributeKey> set = this.attributes.get(tagNameValueOf);
        if (set != null && set.contains(attributeKeyValueOf)) {
            if (!this.protocols.containsKey(tagNameValueOf)) {
                return true;
            }
            Map<AttributeKey, Set<Protocol>> map = this.protocols.get(tagNameValueOf);
            if (map.containsKey(attributeKeyValueOf) && !testValidProtocol(element, attribute, map.get(attributeKeyValueOf))) {
                return false;
            }
            return true;
        }
        if (this.enforcedAttributes.get(tagNameValueOf) != null) {
            Attributes enforcedAttributes = getEnforcedAttributes(str);
            String key = attribute.getKey();
            if (enforcedAttributes.hasKeyIgnoreCase(key)) {
                return enforcedAttributes.getIgnoreCase(key).equals(attribute.getValue());
            }
        }
        if (str.equals(":all") || !isSafeAttribute(":all", element, attribute)) {
            return false;
        }
        return true;
    }

    public Whitelist removeAttributes(String str, String... strArr) {
        boolean z6;
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        if (strArr.length > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Validate.isTrue(z6, "No attribute names supplied.");
        TagName tagNameValueOf = TagName.valueOf(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.tagNames.contains(tagNameValueOf) && this.attributes.containsKey(tagNameValueOf)) {
            Set<AttributeKey> set = this.attributes.get(tagNameValueOf);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                this.attributes.remove(tagNameValueOf);
            }
        }
        if (str.equals(":all")) {
            for (TagName tagName : this.attributes.keySet()) {
                Set<AttributeKey> set2 = this.attributes.get(tagName);
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    this.attributes.remove(tagName);
                }
            }
        }
        return this;
    }

    public Whitelist removeEnforcedAttribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        TagName tagNameValueOf = TagName.valueOf(str);
        if (this.tagNames.contains(tagNameValueOf) && this.enforcedAttributes.containsKey(tagNameValueOf)) {
            AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
            Map<AttributeKey, AttributeValue> map = this.enforcedAttributes.get(tagNameValueOf);
            map.remove(attributeKeyValueOf);
            if (map.isEmpty()) {
                this.enforcedAttributes.remove(tagNameValueOf);
            }
        }
        return this;
    }

    public Whitelist removeProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        Validate.isTrue(this.protocols.containsKey(tagNameValueOf), "Cannot remove a protocol that is not set.");
        Map<AttributeKey, Set<Protocol>> map = this.protocols.get(tagNameValueOf);
        Validate.isTrue(map.containsKey(attributeKeyValueOf), "Cannot remove a protocol that is not set.");
        Set<Protocol> set = map.get(attributeKeyValueOf);
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.remove(Protocol.valueOf(str3));
        }
        if (set.isEmpty()) {
            map.remove(attributeKeyValueOf);
            if (map.isEmpty()) {
                this.protocols.remove(tagNameValueOf);
            }
        }
        return this;
    }

    public Whitelist removeTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            TagName tagNameValueOf = TagName.valueOf(str);
            if (this.tagNames.remove(tagNameValueOf)) {
                this.attributes.remove(tagNameValueOf);
                this.enforcedAttributes.remove(tagNameValueOf);
                this.protocols.remove(tagNameValueOf);
            }
        }
        return this;
    }
}
