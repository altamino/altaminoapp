.class public Lcom/android/billingclient/api/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/g$c$a;
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/g$c;->zzc:I

    iput p1, p0, Lcom/android/billingclient/api/g$c;->zzd:I

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/g$c$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/g$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/g$c$a;-><init>(Lcom/android/billingclient/api/j0;)V

    return-object v0
.end method

.method static bridge synthetic f(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$c;->zza:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic g(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$c;->zzb:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic h(Lcom/android/billingclient/api/g$c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/g$c;->zzc:I

    return-void
.end method

.method static bridge synthetic i(Lcom/android/billingclient/api/g$c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/g$c;->zzd:I

    return-void
.end method


# virtual methods
.method final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/g$c;->zzc:I

    return v0
.end method

.method final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/g$c;->zzd:I

    return v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g$c;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g$c;->zzb:Ljava/lang/String;

    return-object v0
.end method
