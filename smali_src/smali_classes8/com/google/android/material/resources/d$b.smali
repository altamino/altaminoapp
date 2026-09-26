.class Lcom/google/android/material/resources/d$b;
.super Lcom/google/android/material/resources/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/resources/d;

.field final synthetic val$callback:Lcom/google/android/material/resources/f;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Lcom/google/android/material/resources/d;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/resources/d$b;->this$0:Lcom/google/android/material/resources/d;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/material/resources/d$b;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/material/resources/d$b;->val$textPaint:Landroid/text/TextPaint;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/material/resources/d$b;->val$callback:Lcom/google/android/material/resources/f;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/resources/f;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/resources/d$b;->val$callback:Lcom/google/android/material/resources/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/f;->a(I)V

    .line 6
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/resources/d$b;->this$0:Lcom/google/android/material/resources/d;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/resources/d$b;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/material/resources/d$b;->val$textPaint:Landroid/text/TextPaint;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/resources/d;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/resources/d$b;->val$callback:Lcom/google/android/material/resources/f;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/resources/f;->b(Landroid/graphics/Typeface;Z)V

    .line 15
    return-void
.end method
