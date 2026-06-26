.class Lcom/narvii/util/LruHashSet$1;
.super Lcom/narvii/util/LruCache;
.source "LruHashSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/LruHashSet;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/LruHashSet;


# direct methods
.method constructor <init>(Lcom/narvii/util/LruHashSet;I)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/narvii/util/LruHashSet$1;->this$0:Lcom/narvii/util/LruHashSet;

    invoke-direct {p0, p2}, Lcom/narvii/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/narvii/util/LruHashSet$1;->this$0:Lcom/narvii/util/LruHashSet;

    invoke-virtual {p1, p2}, Lcom/narvii/util/LruHashSet;->onKeyEvicted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
