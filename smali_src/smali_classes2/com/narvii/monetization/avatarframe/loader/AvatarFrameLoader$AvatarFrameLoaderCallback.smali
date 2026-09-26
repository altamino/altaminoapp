.class public interface abstract Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AvatarFrameLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onProgressUpdate(IILjava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
