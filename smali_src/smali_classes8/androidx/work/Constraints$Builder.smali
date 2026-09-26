.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentUriTriggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requiredNetworkType:Landroidx/work/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requiresBatteryNotLow:Z

.field private requiresCharging:Z

.field private requiresDeviceIdle:Z

.field private requiresStorageNotLow:Z

.field private triggerContentMaxDelay:J

.field private triggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .locals 2
    .param p1    # Landroidx/work/Constraints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    .line 7
    invoke-virtual {p1}, Landroidx/work/Constraints;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    invoke-virtual {p1}, Landroidx/work/Constraints;->h()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    .line 9
    invoke-virtual {p1}, Landroidx/work/Constraints;->d()Landroidx/work/NetworkType;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 10
    invoke-virtual {p1}, Landroidx/work/Constraints;->f()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    .line 11
    invoke-virtual {p1}, Landroidx/work/Constraints;->i()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/work/Constraints;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 13
    invoke-virtual {p1}, Landroidx/work/Constraints;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 14
    invoke-virtual {p1}, Landroidx/work/Constraints;->c()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/t;->X0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/Constraints;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-wide v1, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 15
    .line 16
    iget-wide v3, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 17
    move-object v13, v0

    .line 18
    move-wide v9, v1

    .line 19
    move-wide v11, v3

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    move-object v13, v0

    .line 28
    move-wide v9, v1

    .line 29
    move-wide v11, v9

    .line 30
    .line 31
    :goto_0
    iget-boolean v5, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    .line 32
    .line 33
    iget-boolean v6, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 36
    .line 37
    iget-boolean v7, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    .line 38
    .line 39
    iget-boolean v8, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    .line 40
    .line 41
    new-instance v0, Landroidx/work/Constraints;

    .line 42
    move-object v3, v0

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v3 .. v13}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 46
    return-object v0
.end method

.method public final b(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 1
    .param p1    # Landroidx/work/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method
