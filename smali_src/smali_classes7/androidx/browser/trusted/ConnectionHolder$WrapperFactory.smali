.class Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/ConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method a(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Landroid/support/customtabs/trusted/b$a;->x1(Landroid/os/IBinder;)Landroid/support/customtabs/trusted/b;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p2, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;-><init>(Landroid/support/customtabs/trusted/b;Landroid/content/ComponentName;)V

    .line 10
    return-object v0
.end method
