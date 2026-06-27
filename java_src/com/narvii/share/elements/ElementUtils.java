package com.narvii.share.elements;

import com.narvii.app.NVContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public class ElementUtils {
    public static final int SHARE_PRIORITY_CLIPBOARD = 99;
    public static final int SHARE_PRIORITY_EMAIL = 1;
    public static final int SHARE_PRIORITY_FACEBOOK = 8;
    public static final int SHARE_PRIORITY_INSTAGRAM = 7;
    public static final int SHARE_PRIORITY_MESSAGE = 0;
    public static final int SHARE_PRIORITY_MESSENGER = 4;
    public static final int SHARE_PRIORITY_OTHERS = 100;
    public static final int SHARE_PRIORITY_PINTEREST = 10;
    public static final int SHARE_PRIORITY_REDDIT = 6;
    public static final int SHARE_PRIORITY_SNAPCHAT = 2;
    public static final int SHARE_PRIORITY_TUMBLR = 3;
    public static final int SHARE_PRIORITY_TWITTER = 9;
    public static final int SHARE_PRIORITY_WHATSAPP = 5;
    List<BaseElement> availableElements = new ArrayList();
    NVContext context;

    public ElementUtils(NVContext nVContext) {
        this.context = nVContext;
    }

    public List<BaseElement> getShareTargetElements(boolean z) {
        this.availableElements.clear();
        ArrayList<BaseElement> arrayList = new ArrayList();
        arrayList.add(new MessageElement(this.context));
        arrayList.add(new EmailElement(this.context));
        arrayList.add(new SnapChatElement(this.context));
        arrayList.add(new TumblrElement(this.context));
        arrayList.add(new InstagramElement(this.context));
        arrayList.add(new FaceBookElement(this.context));
        arrayList.add(new TwitterElement(this.context));
        arrayList.add(new WhatsAppElement(this.context));
        arrayList.add(new MessengerElement(this.context));
        arrayList.add(new PinterestElement(this.context));
        if (z) {
            arrayList.add(new ClipboardElement(this.context));
        }
        arrayList.add(new OthersElement(this.context));
        for (BaseElement baseElement : arrayList) {
            if (baseElement.isAvailable()) {
                this.availableElements.add(baseElement);
            }
        }
        Collections.sort(this.availableElements, new Comparator<BaseElement>() { // from class: com.narvii.share.elements.ElementUtils.1
            @Override // java.util.Comparator
            public int compare(BaseElement baseElement2, BaseElement baseElement3) {
                return baseElement2.priority() - baseElement3.priority();
            }
        });
        return this.availableElements;
    }

    public List<BaseElement> getShareTargetElements() {
        return getShareTargetElements(false);
    }
}
