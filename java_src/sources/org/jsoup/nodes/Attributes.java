package org.jsoup.nodes;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.b;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;

/* JADX INFO: loaded from: classes5.dex */
public class Attributes implements Iterable<Attribute>, Cloneable {
    private static final String[] Empty = new String[0];
    private static final String EmptyString = "";
    private static final int GrowthFactor = 2;
    private static final int InitialCapacity = 4;
    static final int NotFound = -1;
    protected static final String dataPrefix = "data-";
    String[] keys;
    private int size = 0;
    String[] vals;

    private static class Dataset extends AbstractMap<String, String> {
        private final Attributes attributes;

        private class DatasetIterator implements Iterator<Map.Entry<String, String>> {
            private Attribute attr;
            private Iterator<Attribute> attrIter;

            private DatasetIterator() {
                this.attrIter = Dataset.this.attributes.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                while (this.attrIter.hasNext()) {
                    Attribute next = this.attrIter.next();
                    this.attr = next;
                    if (next.isDataAttribute()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public Map.Entry<String, String> next() {
                return new Attribute(this.attr.getKey().substring(5), this.attr.getValue());
            }

            @Override // java.util.Iterator
            public void remove() {
                Dataset.this.attributes.remove(this.attr.getKey());
            }
        }

        private class EntrySet extends AbstractSet<Map.Entry<String, String>> {
            private EntrySet() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<String, String>> iterator() {
                return new DatasetIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i10 = 0;
                while (new DatasetIterator().hasNext()) {
                    i10++;
                }
                return i10;
            }
        }

        private Dataset(Attributes attributes) {
            this.attributes = attributes;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<String, String>> entrySet() {
            return new EntrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public String put(String str, String str2) {
            String strDataKey = Attributes.dataKey(str);
            String str3 = this.attributes.hasKey(strDataKey) ? this.attributes.get(strDataKey) : null;
            this.attributes.put(strDataKey, str2);
            return str3;
        }
    }

    static String checkNotNull(String str) {
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remove(int i10) {
        Validate.isFalse(i10 >= this.size);
        int i11 = (this.size - i10) - 1;
        if (i11 > 0) {
            String[] strArr = this.keys;
            int i12 = i10 + 1;
            System.arraycopy(strArr, i12, strArr, i10, i11);
            String[] strArr2 = this.vals;
            System.arraycopy(strArr2, i12, strArr2, i10, i11);
        }
        int i13 = this.size - 1;
        this.size = i13;
        this.keys[i13] = null;
        this.vals[i13] = null;
    }

    public String html() {
        StringBuilder sb = new StringBuilder();
        try {
            html(sb, new Document("").outputSettings());
            return sb.toString();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void normalize() {
        for (int i10 = 0; i10 < this.size; i10++) {
            String[] strArr = this.keys;
            strArr[i10] = Normalizer.lowerCase(strArr[i10]);
        }
    }

    public Attributes put(String str, String str2) {
        int iIndexOfKey = indexOfKey(str);
        if (iIndexOfKey != -1) {
            this.vals[iIndexOfKey] = str2;
        } else {
            add(str, str2);
        }
        return this;
    }

    public int size() {
        return this.size;
    }

    private void add(String str, String str2) {
        checkCapacity(this.size + 1);
        String[] strArr = this.keys;
        int i10 = this.size;
        strArr[i10] = str;
        this.vals[i10] = str2;
        this.size = i10 + 1;
    }

    private void checkCapacity(int i10) {
        Validate.isTrue(i10 >= this.size);
        String[] strArr = this.keys;
        int length = strArr.length;
        if (length >= i10) {
            return;
        }
        int i11 = length >= 4 ? this.size * 2 : 4;
        if (i10 <= i11) {
            i10 = i11;
        }
        this.keys = copyOf(strArr, i10);
        this.vals = copyOf(this.vals, i10);
    }

    private static String[] copyOf(String[] strArr, int i10) {
        String[] strArr2 = new String[i10];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i10));
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String dataKey(String str) {
        return dataPrefix + str;
    }

    public List<Attribute> asList() {
        ArrayList arrayList = new ArrayList(this.size);
        for (int i10 = 0; i10 < this.size; i10++) {
            arrayList.add(this.vals[i10] == null ? new BooleanAttribute(this.keys[i10]) : new Attribute(this.keys[i10], this.vals[i10], this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Attributes clone() {
        try {
            Attributes attributes = (Attributes) super.clone();
            attributes.size = this.size;
            this.keys = copyOf(this.keys, this.size);
            this.vals = copyOf(this.vals, this.size);
            return attributes;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Map<String, String> dataset() {
        return new Dataset();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Attributes attributes = (Attributes) obj;
        if (this.size == attributes.size && Arrays.equals(this.keys, attributes.keys)) {
            return Arrays.equals(this.vals, attributes.vals);
        }
        return false;
    }

    public int hashCode() {
        return (((this.size * 31) + Arrays.hashCode(this.keys)) * 31) + Arrays.hashCode(this.vals);
    }

    @Override // java.lang.Iterable
    public Iterator<Attribute> iterator() {
        return new Iterator<Attribute>() { // from class: org.jsoup.nodes.Attributes.1

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            int f3305i = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f3305i < Attributes.this.size;
            }

            @Override // java.util.Iterator
            public Attribute next() {
                Attributes attributes = Attributes.this;
                String[] strArr = attributes.keys;
                int i10 = this.f3305i;
                Attribute attribute = new Attribute(strArr[i10], attributes.vals[i10], attributes);
                this.f3305i++;
                return attribute;
            }

            @Override // java.util.Iterator
            public void remove() {
                Attributes attributes = Attributes.this;
                int i10 = this.f3305i - 1;
                this.f3305i = i10;
                attributes.remove(i10);
            }
        };
    }

    public Attributes() {
        String[] strArr = Empty;
        this.keys = strArr;
        this.vals = strArr;
    }

    private int indexOfKeyIgnoreCase(String str) {
        Validate.notNull(str);
        for (int i10 = 0; i10 < this.size; i10++) {
            if (str.equalsIgnoreCase(this.keys[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public void addAll(Attributes attributes) {
        if (attributes.size() == 0) {
            return;
        }
        checkCapacity(this.size + attributes.size);
        Iterator<Attribute> it = attributes.iterator();
        while (it.hasNext()) {
            put(it.next());
        }
    }

    public String get(String str) {
        int iIndexOfKey = indexOfKey(str);
        if (iIndexOfKey == -1) {
            return "";
        }
        return checkNotNull(this.vals[iIndexOfKey]);
    }

    public String getIgnoreCase(String str) {
        int iIndexOfKeyIgnoreCase = indexOfKeyIgnoreCase(str);
        if (iIndexOfKeyIgnoreCase == -1) {
            return "";
        }
        return checkNotNull(this.vals[iIndexOfKeyIgnoreCase]);
    }

    public boolean hasKey(String str) {
        if (indexOfKey(str) != -1) {
            return true;
        }
        return false;
    }

    public boolean hasKeyIgnoreCase(String str) {
        if (indexOfKeyIgnoreCase(str) != -1) {
            return true;
        }
        return false;
    }

    int indexOfKey(String str) {
        Validate.notNull(str);
        for (int i10 = 0; i10 < this.size; i10++) {
            if (str.equals(this.keys[i10])) {
                return i10;
            }
        }
        return -1;
    }

    void putIgnoreCase(String str, String str2) {
        int iIndexOfKeyIgnoreCase = indexOfKeyIgnoreCase(str);
        if (iIndexOfKeyIgnoreCase != -1) {
            this.vals[iIndexOfKeyIgnoreCase] = str2;
            if (!this.keys[iIndexOfKeyIgnoreCase].equals(str)) {
                this.keys[iIndexOfKeyIgnoreCase] = str;
                return;
            }
            return;
        }
        add(str, str2);
    }

    public void removeIgnoreCase(String str) {
        int iIndexOfKeyIgnoreCase = indexOfKeyIgnoreCase(str);
        if (iIndexOfKeyIgnoreCase != -1) {
            remove(iIndexOfKeyIgnoreCase);
        }
    }

    public String toString() {
        return html();
    }

    public Attributes put(String str, boolean z6) {
        if (z6) {
            putIgnoreCase(str, null);
        } else {
            remove(str);
        }
        return this;
    }

    final void html(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            String str = this.keys[i11];
            String str2 = this.vals[i11];
            appendable.append(' ').append(str);
            if (!Attribute.shouldCollapseAttribute(str, str2, outputSettings)) {
                appendable.append("=\"");
                if (str2 == null) {
                    str2 = "";
                }
                Entities.escape(appendable, str2, outputSettings, true, false, false);
                appendable.append(b.STRING);
            }
        }
    }

    public Attributes put(Attribute attribute) {
        Validate.notNull(attribute);
        put(attribute.getKey(), attribute.getValue());
        attribute.parent = this;
        return this;
    }

    public void remove(String str) {
        int iIndexOfKey = indexOfKey(str);
        if (iIndexOfKey != -1) {
            remove(iIndexOfKey);
        }
    }
}
