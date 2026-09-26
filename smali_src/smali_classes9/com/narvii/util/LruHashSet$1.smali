.class Lcom/narvii/util/LruHashSet$1;
.super Lcom/narvii/util/LruCache;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/LruHashSet$1;->this$0:Lcom/narvii/util/LruHashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/LruCache;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/util/LruHashSet$1;->this$0:Lcom/narvii/util/LruHashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/util/LruHashSet;->onKeyEvicted(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method
