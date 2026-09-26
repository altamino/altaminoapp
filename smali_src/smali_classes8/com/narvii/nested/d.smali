.class public final synthetic Lcom/narvii/nested/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/nested/FakeActionBar;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nested/FakeActionBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/d;->a:Lcom/narvii/nested/FakeActionBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nested/d;->a:Lcom/narvii/nested/FakeActionBar;

    invoke-static {v0, p1}, Lcom/narvii/nested/FakeActionBar;->a(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V

    return-void
.end method
