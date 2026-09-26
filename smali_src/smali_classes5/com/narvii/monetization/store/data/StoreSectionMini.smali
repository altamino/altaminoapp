.class public Lcom/narvii/monetization/store/data/StoreSectionMini;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public sectionGroupId:Ljava/lang/String;

.field public storeSectionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public icon()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    .line 13
    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :sswitch_0
    const-string v1, "chat-bubble"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x3

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :sswitch_1
    const-string v1, "prop"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :sswitch_2
    const-string v1, "sticker"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :sswitch_3
    const-string v1, "avatar-frame"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v3, v2

    .line 59
    .line 60
    .line 61
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 62
    return v2

    .line 63
    .line 64
    .line 65
    :pswitch_0
    const v0, 0x7f080509

    .line 66
    return v0

    .line 67
    .line 68
    .line 69
    :pswitch_1
    const v0, 0x7f08050d

    .line 70
    return v0

    .line 71
    .line 72
    .line 73
    :pswitch_2
    const v0, 0x7f08050e

    .line 74
    return v0

    .line 75
    .line 76
    .line 77
    :pswitch_3
    const v0, 0x7f080507

    .line 78
    return v0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :sswitch_data_0
    .sparse-switch
        -0x77faa807 -> :sswitch_3
        -0x70aaf6c3 -> :sswitch_2
        0x34a363 -> :sswitch_1
        0xc8f98a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
