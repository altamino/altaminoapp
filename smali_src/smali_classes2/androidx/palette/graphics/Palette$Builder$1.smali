.class Landroidx/palette/graphics/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroidx/palette/graphics/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/palette/graphics/Palette$Builder;

.field final synthetic val$listener:Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p0, Landroidx/palette/graphics/Palette$Builder$1;->this$0:Landroidx/palette/graphics/Palette$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->a()Landroidx/palette/graphics/Palette;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    .line 10
    const-string v0, "Palette"

    .line 11
    .line 12
    const-string v1, "Exception thrown during async generate"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method protected b(Landroidx/palette/graphics/Palette;)V
    .locals 1
    .param p1    # Landroidx/palette/graphics/Palette;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder$1;->val$listener:Landroidx/palette/graphics/Palette$PaletteAsyncListener;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/palette/graphics/Palette$PaletteAsyncListener;->a(Landroidx/palette/graphics/Palette;)V

    .line 6
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder$1;->a([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Landroidx/palette/graphics/Palette;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder$1;->b(Landroidx/palette/graphics/Palette;)V

    .line 6
    return-void
.end method
