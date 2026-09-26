.class public final synthetic Lcom/google/android/play/core/integrity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/e0;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/integrity/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/integrity/g;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/g;-><init>()V

    sput-object v0, Lcom/google/android/play/core/integrity/g;->a:Lcom/google/android/play/core/integrity/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/t;->y1(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/u;

    move-result-object p1

    return-object p1
.end method
