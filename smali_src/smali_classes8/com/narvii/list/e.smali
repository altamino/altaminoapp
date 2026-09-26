.class public final synthetic Lcom/narvii/list/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/list/NVListFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/list/NVListFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/e;->a:Lcom/narvii/list/NVListFragment;

    iput p2, p0, Lcom/narvii/list/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/list/e;->a:Lcom/narvii/list/NVListFragment;

    iget v1, p0, Lcom/narvii/list/e;->b:I

    invoke-static {v0, v1}, Lcom/narvii/list/NVListFragment;->n(Lcom/narvii/list/NVListFragment;I)V

    return-void
.end method
