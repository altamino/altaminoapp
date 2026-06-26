.class Lcom/narvii/location/picker/GoogleMapPickerFragment$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleMapPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/picker/GoogleMapPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/location/picker/GoogleMapPickerFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/location/picker/GoogleMapPickerFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/location/picker/GoogleMapPickerFragment$MyWebViewClient;->this$0:Lcom/narvii/location/picker/GoogleMapPickerFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/location/picker/GoogleMapPickerFragment;Lcom/narvii/location/picker/GoogleMapPickerFragment$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/narvii/location/picker/GoogleMapPickerFragment$MyWebViewClient;-><init>(Lcom/narvii/location/picker/GoogleMapPickerFragment;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x1

    .line 100
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".google."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :catch_0
    :cond_2
    :goto_0
    return p1
.end method
