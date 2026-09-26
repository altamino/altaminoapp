package org.schabi.newpipe.extractor.services.youtube;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes9.dex */
public final class p {
    private static x9.n c(JsonObject jsonObject) throws aa.h {
        String strN;
        x9.n nVar = new x9.n();
        String strJ = r0.J(jsonObject.getObject("contentTitle"));
        String strJ2 = r0.J(jsonObject.getObject("text"));
        if (strJ == null || strJ2 == null) {
            throw new aa.h("Could not extract clarification renderer content");
        }
        nVar.d(strJ);
        nVar.c(new oa.e(strJ2, 3));
        if (jsonObject.has("actionButton")) {
            JsonObject object = jsonObject.getObject("actionButton").getObject("buttonRenderer");
            try {
                String strL = r0.l(r0.N(object.getObject("command")));
                Objects.requireNonNull(strL);
                nVar.a(new URL(strL));
                String strJ3 = r0.J(object.getObject("text"));
                if (qa.y.m(strJ3)) {
                    throw new aa.h("Could not get metadata info link text.");
                }
                nVar.b(strJ3);
            } catch (NullPointerException | MalformedURLException e) {
                throw new aa.h("Could not get metadata info URL", e);
            }
        }
        if (jsonObject.has("secondaryEndpoint") && jsonObject.has("secondarySource") && (strN = r0.N(jsonObject.getObject("secondaryEndpoint"))) != null && !r0.S(strN)) {
            try {
                nVar.a(new URL(strN));
                String strJ4 = r0.J(jsonObject.getObject("secondarySource"));
                if (strJ4 != null) {
                    strN = strJ4;
                }
                nVar.b(strN);
            } catch (MalformedURLException e2) {
                throw new aa.h("Could not get metadata info secondary URL", e2);
            }
        }
        return nVar;
    }

    private static x9.n e(JsonObject jsonObject) throws aa.h {
        x9.n nVar = new x9.n();
        StringBuilder sb = new StringBuilder();
        for (Object obj : jsonObject.getArray("paragraphs")) {
            if (sb.length() != 0) {
                sb.append("<br>");
            }
            sb.append(r0.J((JsonObject) obj));
        }
        nVar.c(new oa.e(sb.toString(), 1));
        if (jsonObject.has("sourceEndpoint")) {
            try {
                String strL = r0.l(r0.N(jsonObject.getObject("sourceEndpoint")));
                Objects.requireNonNull(strL);
                nVar.a(new URL(strL));
                String strJ = r0.J(jsonObject.getObject("inlineSource"));
                if (qa.y.m(strJ)) {
                    throw new aa.h("Could not get metadata info link text.");
                }
                nVar.b(strJ);
            } catch (NullPointerException | MalformedURLException e) {
                throw new aa.h("Could not get metadata info URL", e);
            }
        }
        return nVar;
    }

    public static List<x9.n> f(JsonArray jsonArray) throws aa.h {
        final ArrayList arrayList = new ArrayList();
        Iterator it = jsonArray.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.has("itemSectionRenderer")) {
                for (JsonObject jsonObject2 : jsonObject.getObject("itemSectionRenderer").getArray("contents")) {
                    if (jsonObject2.has("infoPanelContentRenderer")) {
                        arrayList.add(e(jsonObject2.getObject("infoPanelContentRenderer")));
                    }
                    if (jsonObject2.has("clarificationRenderer")) {
                        arrayList.add(c(jsonObject2.getObject("clarificationRenderer")));
                    }
                    if (jsonObject2.has("emergencyOneboxRenderer")) {
                        d(jsonObject2.getObject("emergencyOneboxRenderer"), new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.m
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                arrayList.add((x9.n) obj);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g(Object obj) {
        return (obj instanceof JsonObject) && ((JsonObject) obj).has("singleActionEmergencySupportRenderer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject h(Object obj) {
        return ((JsonObject) obj).getObject("singleActionEmergencySupportRenderer");
    }

    private static void d(JsonObject jsonObject, Consumer<x9.n> consumer) throws aa.h {
        String string;
        List<JsonObject> list = (List) jsonObject.values().stream().filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return p.g(obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return p.h(obj);
            }
        }).collect(Collectors.toList());
        if (!list.isEmpty()) {
            for (JsonObject jsonObject2 : list) {
                x9.n nVar = new x9.n();
                String strL = r0.L(jsonObject2.getObject("title"), "title");
                if (jsonObject2.has("actionText")) {
                    string = "\n" + r0.L(jsonObject2.getObject("actionText"), "action");
                } else if (jsonObject2.has("contacts")) {
                    JsonArray array = jsonObject2.getArray("contacts");
                    StringBuilder sb = new StringBuilder();
                    for (int i10 = 0; i10 < array.size(); i10++) {
                        sb.append("\n");
                        sb.append(r0.L(array.getObject(i10).getObject("actionText"), "contacts.actionText"));
                    }
                    string = sb.toString();
                } else {
                    string = "";
                }
                String strL2 = r0.L(jsonObject2.getObject("detailsText"), "details");
                String strL3 = r0.L(jsonObject2.getObject("navigationText"), "urlText");
                nVar.d(strL);
                nVar.c(new oa.e(strL2 + string, 3));
                nVar.b(strL3);
                String strN = r0.N(jsonObject2.getObject("navigationEndpoint"));
                if (strN != null) {
                    try {
                        nVar.a(new URL(qa.y.v(strN)));
                        consumer.accept(nVar);
                    } catch (MalformedURLException e) {
                        throw new aa.h("Could not parse emergency renderer url", e);
                    }
                } else {
                    throw new aa.h("Could not extract emergency renderer url");
                }
            }
            return;
        }
        throw new aa.h("Could not extract any meta info from emergency renderer");
    }
}
