.class public final synthetic Lcom/narvii/list/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/list/NVAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/a;->a:Lcom/narvii/list/NVAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/list/a;->a:Lcom/narvii/list/NVAdapter;

    invoke-static {v0, p1}, Lcom/narvii/list/NVAdapter;->b(Lcom/narvii/list/NVAdapter;Landroid/view/View;)V

    return-void
.end method
