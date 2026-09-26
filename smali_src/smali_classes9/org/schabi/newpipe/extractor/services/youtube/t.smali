.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method
