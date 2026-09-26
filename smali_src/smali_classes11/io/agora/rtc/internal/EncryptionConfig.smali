.class public Lio/agora/rtc/internal/EncryptionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;
    }
.end annotation


# instance fields
.field public encryptionKey:Ljava/lang/String;

.field public encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 6
    .line 7
    iput-object v0, p0, Lio/agora/rtc/internal/EncryptionConfig;->encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/internal/EncryptionConfig;->encryptionKey:Ljava/lang/String;

    .line 11
    return-void
.end method
