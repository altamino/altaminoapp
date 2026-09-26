.class Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerStub"
.end annotation


# instance fields
.field listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    instance-of v0, p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
