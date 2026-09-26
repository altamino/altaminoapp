.class Landroidx/core/provider/CallbackWithHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/CallbackWithHandler;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/CallbackWithHandler;

.field final synthetic val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/core/provider/CallbackWithHandler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler$1;->this$0:Landroidx/core/provider/CallbackWithHandler;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/core/provider/CallbackWithHandler$1;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/core/provider/CallbackWithHandler$1;->val$typeface:Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler$1;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/provider/CallbackWithHandler$1;->val$typeface:Landroid/graphics/Typeface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->b(Landroid/graphics/Typeface;)V

    .line 8
    return-void
.end method
