.class public final synthetic Lcom/narvii/pushservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/BlockingItem;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/BlockingItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/a;->a:Lcom/narvii/util/BlockingItem;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pushservice/a;->a:Lcom/narvii/util/BlockingItem;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    return-void
.end method
