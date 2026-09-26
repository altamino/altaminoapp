.class public final synthetic Lcom/narvii/pre_editing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/a;->a:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/a;->a:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->s(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/view/View;)V

    return-void
.end method
