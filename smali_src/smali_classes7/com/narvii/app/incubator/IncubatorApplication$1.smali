.class Lcom/narvii/app/incubator/IncubatorApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/SdkInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/incubator/IncubatorApplication;->initMediaLabAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/incubator/IncubatorApplication;


# direct methods
.method constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$1;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaLabAds destroyed"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onInitFailed(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "MediaLabAds init failed code: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, ", message: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onInitSucceeded()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaLabAds init succeeded"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 6
    return-void
.end method
