.class Lcom/bumptech/glide/load/resource/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/j;->d(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/j;

.field final synthetic val$decodeFormat:Lcom/bumptech/glide/load/b;

.field final synthetic val$isHardwareConfigAllowed:Z

.field final synthetic val$preferredColorSpace:Lcom/bumptech/glide/load/j;

.field final synthetic val$requestedHeight:I

.field final synthetic val$requestedWidth:I

.field final synthetic val$strategy:Lcom/bumptech/glide/load/resource/bitmap/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/j;IIZLcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/j;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/j$a;->this$0:Lcom/bumptech/glide/load/resource/j;

    .line 3
    .line 4
    iput p2, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedWidth:I

    .line 5
    .line 6
    iput p3, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedHeight:I

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/bumptech/glide/load/resource/j$a;->val$isHardwareConfigAllowed:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/j$a;->val$decodeFormat:Lcom/bumptech/glide/load/b;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/bumptech/glide/load/resource/j$a;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/j$a;->val$preferredColorSpace:Lcom/bumptech/glide/load/j;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/j$a;->this$0:Lcom/bumptech/glide/load/resource/j;

    .line 3
    .line 4
    iget-object p3, p3, Lcom/bumptech/glide/load/resource/j;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 5
    .line 6
    iget v0, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedWidth:I

    .line 7
    .line 8
    iget v1, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedHeight:I

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/bumptech/glide/load/resource/j$a;->val$isHardwareConfigAllowed:Z

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/u;->c(IIZZ)Z

    .line 15
    move-result p3

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    const/4 p3, 0x3

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/resource/b;->a(Landroid/graphics/ImageDecoder;I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p3, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/resource/b;->a(Landroid/graphics/ImageDecoder;I)V

    .line 27
    .line 28
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/j$a;->val$decodeFormat:Lcom/bumptech/glide/load/b;

    .line 29
    .line 30
    sget-object v0, Lcom/bumptech/glide/load/b;->PREFER_RGB_565:Lcom/bumptech/glide/load/b;

    .line 31
    .line 32
    if-ne p3, v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3}, Lcom/bumptech/glide/load/resource/d;->a(Landroid/graphics/ImageDecoder;I)V

    .line 36
    .line 37
    :cond_1
    new-instance p3, Lcom/bumptech/glide/load/resource/j$a$a;

    .line 38
    .line 39
    .line 40
    invoke-direct {p3, p0}, Lcom/bumptech/glide/load/resource/j$a$a;-><init>(Lcom/bumptech/glide/load/resource/j$a;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/resource/e;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/f;->a(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    iget v0, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedWidth:I

    .line 50
    .line 51
    const/high16 v1, -0x80000000

    .line 52
    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 57
    move-result v0

    .line 58
    .line 59
    :cond_2
    iget v2, p0, Lcom/bumptech/glide/load/resource/j$a;->val$requestedHeight:I

    .line 60
    .line 61
    if-ne v2, v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 65
    move-result v2

    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/j$a;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 71
    move-result v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 75
    move-result v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(IIII)F

    .line 79
    move-result v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 83
    move-result v1

    .line 84
    int-to-float v1, v1

    .line 85
    mul-float/2addr v1, v0

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 93
    move-result v2

    .line 94
    int-to-float v2, v2

    .line 95
    mul-float/2addr v2, v0

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 99
    move-result v2

    .line 100
    const/4 v3, 0x2

    .line 101
    .line 102
    const-string v4, "ImageDecoder"

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 106
    move-result v3

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v5, "Resizing from ["

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 122
    move-result v5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string/jumbo v5, "x"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 135
    move-result p3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string p3, "] to ["

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p3, "] scaleFactor: "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    .line 167
    invoke-static {v4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-static {p1, v1, v2}, Lcom/bumptech/glide/load/resource/g;->a(Landroid/graphics/ImageDecoder;II)V

    .line 171
    .line 172
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    .line 174
    const/16 v0, 0x1c

    .line 175
    .line 176
    if-lt p3, v0, :cond_6

    .line 177
    .line 178
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/j$a;->val$preferredColorSpace:Lcom/bumptech/glide/load/j;

    .line 179
    .line 180
    sget-object v0, Lcom/bumptech/glide/load/j;->DISPLAY_P3:Lcom/bumptech/glide/load/j;

    .line 181
    .line 182
    if-ne p3, v0, :cond_5

    .line 183
    .line 184
    .line 185
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/h;->a(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 186
    move-result-object p3

    .line 187
    .line 188
    if-eqz p3, :cond_5

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/h;->a(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 192
    move-result-object p2

    .line 193
    .line 194
    .line 195
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/i;->a(Landroid/graphics/ColorSpace;)Z

    .line 196
    move-result p2

    .line 197
    .line 198
    if-eqz p2, :cond_5

    .line 199
    .line 200
    .line 201
    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/ColorSpace$Named;

    .line 202
    move-result-object p2

    .line 203
    goto :goto_1

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    :goto_1
    invoke-static {p2}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 211
    move-result-object p2

    .line 212
    .line 213
    .line 214
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/c;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 215
    goto :goto_2

    .line 216
    .line 217
    :cond_6
    const/16 p2, 0x1a

    .line 218
    .line 219
    if-lt p3, p2, :cond_7

    .line 220
    .line 221
    .line 222
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    .line 226
    invoke-static {p2}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    .line 230
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/c;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 231
    :cond_7
    :goto_2
    return-void
.end method
