.class public Lorg/schabi/newpipe/extractor/localization/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final isApproximation:Z

.field private final offsetDateTime:Ljava/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Ljava/time/OffsetDateTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/time/OffsetDateTime;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/localization/d;->a(Ljava/time/OffsetDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/e;->offsetDateTime:Ljava/time/OffsetDateTime;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/localization/e;->isApproximation:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/util/Calendar;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/localization/b;->a(Ljava/util/Calendar;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/localization/c;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/time/OffsetDateTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/e;->offsetDateTime:Ljava/time/OffsetDateTime;

    return-object v0
.end method
