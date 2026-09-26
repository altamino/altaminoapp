.class public Lcom/narvii/util/text/IMGUtils;
.super Lcom/twitter/a;
.source "SourceFile"


# static fields
.field private static final IMG:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "\\[IMG=(.{1,10})\\]"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/util/text/IMGUtils;->IMG:Ljava/util/regex/Pattern;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/twitter/a;-><init>()V

    .line 4
    return-void
.end method

.method public static extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const-string v0, "[IMG="

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    sget-object v1, Lcom/narvii/util/text/IMGUtils;->IMG:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 46
    move-result v2

    .line 47
    .line 48
    if-lez v2, :cond_1

    .line 49
    .line 50
    new-instance v2, Lcom/twitter/a$b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 58
    move-result v4

    .line 59
    .line 60
    sget-object v5, Lcom/twitter/a$b$a;->CASHTAG:Lcom/twitter/a$b$a;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/twitter/a$b;-><init>(IILjava/lang/String;Lcom/twitter/a$b$a;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-object v0

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static extractRefIds(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/text/IMGUtils;->extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/twitter/a$b;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/twitter/a$b;->d()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method

.method public static filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/Media;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    iget-object v1, v1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    move v1, p1

    .line 40
    .line 41
    :goto_1
    const/16 v2, 0x64

    .line 42
    .line 43
    if-ge p1, v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/narvii/util/text/IMGUtils;->extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Lcom/twitter/a$b;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/twitter/a$b;->d()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    .line 77
    if-nez v4, :cond_2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v3, 0x0

    .line 80
    .line 81
    :goto_2
    if-eqz v3, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/twitter/a$b;->b()Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/twitter/a$b;->a()Ljava/lang/Integer;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v2

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    return v1
.end method

.method public static insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v0, ","

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    move-result v2

    .line 39
    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    const-string v2, "\n\n"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_1
    const-string v2, "[IMG="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const/16 v1, 0x5d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 63
    move-result p1

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 80
    return-void
.end method

.method public static isSelectionInTag(Landroid/widget/TextView;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    .line 3
    invoke-static {v0, v1, p0}, Lcom/narvii/util/text/IMGUtils;->isSelectionInTag(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isSelectionInTag(Ljava/lang/String;II)Z
    .locals 3

    .line 4
    invoke-static {p0}, Lcom/narvii/util/text/IMGUtils;->extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/a$b;

    .line 5
    invoke-virtual {v0}, Lcom/twitter/a$b;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/twitter/a$b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/a$b;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/a$b;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static removeIMGs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const-string v0, "[IMG="

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .line 25
    sget-object v1, Lcom/narvii/util/text/IMGUtils;->IMG:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 51
    move-result v2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    :cond_2
    :goto_1
    return-object p0
.end method
