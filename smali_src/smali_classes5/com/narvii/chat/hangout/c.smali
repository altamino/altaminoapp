.class public final synthetic Lcom/narvii/chat/hangout/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/hangout/c;->a:Lcom/narvii/chat/hangout/HangoutListFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/hangout/c;->a:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/chat/hangout/HangoutListFragment;->u(Lcom/narvii/chat/hangout/HangoutListFragment;ILandroid/view/View;)V

    return-void
.end method
