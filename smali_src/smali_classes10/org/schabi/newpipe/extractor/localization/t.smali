.class public final synthetic Lorg/schabi/newpipe/extractor/localization/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/time/OffsetDateTime;Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/time/OffsetDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method
