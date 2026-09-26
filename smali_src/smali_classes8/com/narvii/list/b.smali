.class public final synthetic Lcom/narvii/list/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/list/NVAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/b;->a:Lcom/narvii/list/NVAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/list/b;->a:Lcom/narvii/list/NVAdapter;

    invoke-static {v0, p1}, Lcom/narvii/list/NVAdapter;->a(Lcom/narvii/list/NVAdapter;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
