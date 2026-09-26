.class public Lcom/narvii/util/VoiceMessageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static getDurationSecond(I)I
    .locals 1

    .line 1
    int-to-float p0, p0

    .line 2
    .line 3
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 4
    div-float/2addr p0, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$string;->voice_message_duration:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/VoiceMessageUtils;->getDurationSecond(I)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "s"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
