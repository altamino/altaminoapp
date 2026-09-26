.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method
