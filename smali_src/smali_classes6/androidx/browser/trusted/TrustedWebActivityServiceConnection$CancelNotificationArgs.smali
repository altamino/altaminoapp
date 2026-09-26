.class Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CancelNotificationArgs"
.end annotation


# instance fields
.field public final platformId:I

.field public final platformTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;->platformTag:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;->platformId:I

    .line 8
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;
    .locals 3

    .line 1
    .line 2
    const-string v0, "android.support.customtabs.trusted.PLATFORM_TAG"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v1, "android.support.customtabs.trusted.PLATFORM_ID"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v2, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$CancelNotificationArgs;-><init>(Ljava/lang/String;I)V

    .line 24
    return-object v2
.end method
