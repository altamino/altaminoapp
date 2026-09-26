.class public Lcom/android/installreferrer/api/ReferrerDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_INSTALL_BEGIN_TIMESTAMP:Ljava/lang/String; = "install_begin_timestamp_seconds"

.field private static final KEY_INSTALL_REFERRER:Ljava/lang/String; = "install_referrer"

.field private static final KEY_REFERRER_CLICK_TIMESTAMP:Ljava/lang/String; = "referrer_click_timestamp_seconds"


# instance fields
.field private final mOriginalBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    .line 6
    return-void
.end method


# virtual methods
.method public getInstallBeginTimestampSeconds()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "install_begin_timestamp_seconds"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getInstallReferrer()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "install_referrer"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getReferrerClickTimestampSeconds()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "referrer_click_timestamp_seconds"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method
