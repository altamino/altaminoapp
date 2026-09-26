.class public final synthetic Lcom/narvii/post/entry/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/h;->a:Lcom/narvii/post/entry/PostEntryDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/post/entry/h;->a:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->d(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V

    return-void
.end method
