.class public final synthetic Lcom/narvii/list/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/list/NVListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/c;->a:Lcom/narvii/list/NVListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/list/c;->a:Lcom/narvii/list/NVListFragment;

    invoke-static {v0}, Lcom/narvii/list/NVListFragment;->p(Lcom/narvii/list/NVListFragment;)V

    return-void
.end method
