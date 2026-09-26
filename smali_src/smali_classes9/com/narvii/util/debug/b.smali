.class public final synthetic Lcom/narvii/util/debug/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/debug/ToggleOptionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/debug/ToggleOptionsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/debug/b;->a:Lcom/narvii/util/debug/ToggleOptionsFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/debug/b;->a:Lcom/narvii/util/debug/ToggleOptionsFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/util/debug/ToggleOptionsFragment;->n(Lcom/narvii/util/debug/ToggleOptionsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
