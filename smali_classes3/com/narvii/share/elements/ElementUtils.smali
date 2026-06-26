.class public Lcom/narvii/share/elements/ElementUtils;
.super Ljava/lang/Object;
.source "ElementUtils.java"


# static fields
.field public static final SHARE_PRIORITY_CLIPBOARD:I = 0x63

.field public static final SHARE_PRIORITY_EMAIL:I = 0x1

.field public static final SHARE_PRIORITY_FACEBOOK:I = 0x8

.field public static final SHARE_PRIORITY_INSTAGRAM:I = 0x7

.field public static final SHARE_PRIORITY_MESSAGE:I = 0x0

.field public static final SHARE_PRIORITY_MESSENGER:I = 0x4

.field public static final SHARE_PRIORITY_OTHERS:I = 0x64

.field public static final SHARE_PRIORITY_PINTEREST:I = 0xa

.field public static final SHARE_PRIORITY_REDDIT:I = 0x6

.field public static final SHARE_PRIORITY_SNAPCHAT:I = 0x2

.field public static final SHARE_PRIORITY_TUMBLR:I = 0x3

.field public static final SHARE_PRIORITY_TWITTER:I = 0x9

.field public static final SHARE_PRIORITY_WHATSAPP:I = 0x5


# instance fields
.field availableElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/share/elements/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/share/elements/ElementUtils;->availableElements:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getShareTargetElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/share/elements/BaseElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/ElementUtils;->getShareTargetElements(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareTargetElements(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/share/elements/BaseElement;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/narvii/share/elements/ElementUtils;->availableElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Lcom/narvii/share/elements/MessageElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/MessageElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/narvii/share/elements/EmailElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/EmailElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/narvii/share/elements/SnapChatElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/SnapChatElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/narvii/share/elements/TumblrElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/TumblrElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/narvii/share/elements/InstagramElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/InstagramElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/narvii/share/elements/FaceBookElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/FaceBookElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/narvii/share/elements/TwitterElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/TwitterElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/narvii/share/elements/WhatsAppElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/WhatsAppElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/narvii/share/elements/MessengerElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/MessengerElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/narvii/share/elements/PinterestElement;

    iget-object v2, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/share/elements/PinterestElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Lcom/narvii/share/elements/ClipboardElement;

    iget-object v1, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v1}, Lcom/narvii/share/elements/ClipboardElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    new-instance p1, Lcom/narvii/share/elements/OthersElement;

    iget-object v1, p0, Lcom/narvii/share/elements/ElementUtils;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v1}, Lcom/narvii/share/elements/OthersElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/share/elements/BaseElement;

    .line 59
    invoke-virtual {v0}, Lcom/narvii/share/elements/BaseElement;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/narvii/share/elements/ElementUtils;->availableElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/narvii/share/elements/ElementUtils;->availableElements:Ljava/util/List;

    new-instance v0, Lcom/narvii/share/elements/ElementUtils$1;

    invoke-direct {v0, p0}, Lcom/narvii/share/elements/ElementUtils$1;-><init>(Lcom/narvii/share/elements/ElementUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/share/elements/ElementUtils;->availableElements:Ljava/util/List;

    return-object p1
.end method
