package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.HttpConnection;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes8.dex */
public class FormElement extends Element {
    private final Elements elements;

    public Elements elements() {
        return this.elements;
    }

    public FormElement addElement(Element element) {
        this.elements.add(element);
        return this;
    }

    public List<Connection.KeyVal> formData() {
        Element elementFirst;
        ArrayList arrayList = new ArrayList();
        for (Element element : this.elements) {
            if (element.tag().isFormSubmittable() && !element.hasAttr("disabled")) {
                String strAttr = element.attr("name");
                if (strAttr.length() != 0) {
                    String strAttr2 = element.attr("type");
                    if ("select".equals(element.tagName())) {
                        Iterator<Element> it = element.select("option[selected]").iterator();
                        boolean z6 = false;
                        while (it.hasNext()) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, it.next().val()));
                            z6 = true;
                        }
                        if (!z6 && (elementFirst = element.select("option").first()) != null) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, elementFirst.val()));
                        }
                    } else if (!"checkbox".equalsIgnoreCase(strAttr2) && !"radio".equalsIgnoreCase(strAttr2)) {
                        arrayList.add(HttpConnection.KeyVal.create(strAttr, element.val()));
                    } else if (element.hasAttr("checked")) {
                        arrayList.add(HttpConnection.KeyVal.create(strAttr, element.val().length() > 0 ? element.val() : "on"));
                    }
                }
            }
        }
        return arrayList;
    }

    public Connection submit() {
        String strAbsUrl = hasAttr("action") ? absUrl("action") : baseUri();
        Validate.notEmpty(strAbsUrl, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        return Jsoup.connect(strAbsUrl).data(formData()).method(attr("method").toUpperCase().equals("POST") ? Connection.Method.POST : Connection.Method.GET);
    }

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.elements = new Elements();
    }

    @Override // org.jsoup.nodes.Node
    protected void removeChild(Node node) {
        super.removeChild(node);
        this.elements.remove(node);
    }
}
