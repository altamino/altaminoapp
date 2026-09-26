.class public Lcom/narvii/logging/ObjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public extraHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public localHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public object:Lcom/narvii/model/NVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public screenPos:I


# direct methods
.method public constructor <init>(Lcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    iput-object p1, p0, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/NVObject;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    iput p2, p0, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/NVObject;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    iput p2, p0, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    iput-object p3, p0, Lcom/narvii/logging/ObjectInfo;->extraHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/logging/ObjectInfo;->extraHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setExtraInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/logging/ObjectInfo;->extraHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public setLocalHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/logging/ObjectInfo;->localHashMap:Ljava/util/HashMap;

    return-void
.end method
