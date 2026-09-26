.class public Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallbackBinder:Landroid/support/customtabs/trusted/a;


# direct methods
.method private constructor <init>(Landroid/support/customtabs/trusted/a;)V
    .locals 0
    .param p1    # Landroid/support/customtabs/trusted/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;->mCallbackBinder:Landroid/support/customtabs/trusted/a;

    .line 6
    return-void
.end method

.method static a(Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;
    .locals 1
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    move-object p0, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Landroid/support/customtabs/trusted/a$a;->x1(Landroid/os/IBinder;)Landroid/support/customtabs/trusted/a;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    :goto_0
    if-nez p0, :cond_1

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_1
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;-><init>(Landroid/support/customtabs/trusted/a;)V

    .line 18
    return-object v0
.end method
