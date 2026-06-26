.class public Lcom/narvii/monetization/store/data/StoreSectionMini;
.super Ljava/lang/Object;
.source "StoreSectionMini.java"


# instance fields
.field public name:Ljava/lang/String;

.field public sectionGroupId:Ljava/lang/String;

.field public storeSectionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public icon()I
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "chat-bubble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "prop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "avatar-frame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    const v0, 0x7f0803e3

    return v0

    :cond_2
    const v0, 0x7f0803e9

    return v0

    :cond_3
    const v0, 0x7f0803e5

    return v0

    :cond_4
    const v0, 0x7f0803ea

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x77faa807 -> :sswitch_3
        -0x70aaf6c3 -> :sswitch_2
        0x34a363 -> :sswitch_1
        0xc8f98a1 -> :sswitch_0
    .end sparse-switch
.end method
