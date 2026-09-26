.class public final synthetic Lcom/narvii/chat/waitinglist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Le8/l;

.field public final synthetic b:Le8/l;


# direct methods
.method public synthetic constructor <init>(Le8/l;Le8/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/a;->a:Le8/l;

    iput-object p2, p0, Lcom/narvii/chat/waitinglist/a;->b:Le8/l;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/a;->a:Le8/l;

    iget-object v1, p0, Lcom/narvii/chat/waitinglist/a;->b:Le8/l;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/waitinglist/WaitingListService;->d(Le8/l;Le8/l;Ljava/lang/Object;)V

    return-void
.end method
