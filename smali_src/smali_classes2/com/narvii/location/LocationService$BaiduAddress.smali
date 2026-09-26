.class Lcom/narvii/location/LocationService$BaiduAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/location/ReadableAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduAddress"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field context:Landroid/content/Context;

.field district:Ljava/lang/String;

.field formattedAddress:Ljava/lang/String;

.field province:Ljava/lang/String;

.field street:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public getCityLevelAddressText()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService$BaiduAddress;->city:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "\u4e2d\u56fd"

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->district:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->street:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    return-object v0

    .line 44
    .line 45
    :cond_4
    iget-object v2, p0, Lcom/narvii/location/LocationService$BaiduAddress;->context:Landroid/content/Context;

    .line 46
    .line 47
    sget v3, Lcom/narvii/lib/R$string;->address_output_string:I

    .line 48
    const/4 v4, 0x2

    .line 49
    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    aput-object v1, v4, v5

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    aput-object v0, v4, v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
