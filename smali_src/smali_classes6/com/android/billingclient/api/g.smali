.class public Lcom/android/billingclient/api/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/g$c;,
        Lcom/android/billingclient/api/g$a;,
        Lcom/android/billingclient/api/g$b;
    }
.end annotation


# static fields
.field public static final EXTRA_PARAM_KEY_ACCOUNT_ID:Ljava/lang/String; = "accountId"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private zza:Z

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/android/billingclient/api/g$c;

.field private zze:Lcom/google/android/gms/internal/play_billing/zzaf;

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/g$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/android/billingclient/api/g$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/g$a;-><init>(Lcom/android/billingclient/api/g0;)V

    .line 7
    return-object v0
.end method

.method static bridge synthetic j(Lcom/android/billingclient/api/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/g;->zza:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/android/billingclient/api/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/g;->zzg:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->zzb:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/g;Lcom/google/android/gms/internal/play_billing/zzaf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->zze:Lcom/google/android/gms/internal/play_billing/zzaf;

    return-void
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->zzf:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/g$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->b()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->c()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->d()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->e()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/billingclient/api/g;->zzf:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zze:Lcom/google/android/gms/internal/play_billing/zzaf;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->zzg:Z

    return v0
.end method

.method final r()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzb:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzc:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->e()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->b()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/g;->zzd:Lcom/android/billingclient/api/g$c;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c;->c()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->zza:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->zzg:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    return v0
.end method
