.class public Lcom/linkedin/urls/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _fragmentIndex:I

.field private _hostIndex:I

.field private _originalIndex:I

.field private _originalUrl:Ljava/lang/String;

.field private _pathIndex:I

.field private _portIndex:I

.field private _queryIndex:I

.field private _schemeIndex:I

.field private _usernamePasswordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/linkedin/urls/b;->_schemeIndex:I

    .line 7
    .line 8
    iput v0, p0, Lcom/linkedin/urls/b;->_usernamePasswordIndex:I

    .line 9
    .line 10
    iput v0, p0, Lcom/linkedin/urls/b;->_hostIndex:I

    .line 11
    .line 12
    iput v0, p0, Lcom/linkedin/urls/b;->_portIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/linkedin/urls/b;->_pathIndex:I

    .line 15
    .line 16
    iput v0, p0, Lcom/linkedin/urls/b;->_queryIndex:I

    .line 17
    .line 18
    iput v0, p0, Lcom/linkedin/urls/b;->_fragmentIndex:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/linkedin/urls/c;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/b$a;->$SwitchMap$com$linkedin$urls$UrlPart:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    const/4 p1, -0x1

    .line 13
    return p1

    .line 14
    .line 15
    :pswitch_0
    iget p1, p0, Lcom/linkedin/urls/b;->_fragmentIndex:I

    .line 16
    return p1

    .line 17
    .line 18
    :pswitch_1
    iget p1, p0, Lcom/linkedin/urls/b;->_queryIndex:I

    .line 19
    return p1

    .line 20
    .line 21
    :pswitch_2
    iget p1, p0, Lcom/linkedin/urls/b;->_pathIndex:I

    .line 22
    return p1

    .line 23
    .line 24
    :pswitch_3
    iget p1, p0, Lcom/linkedin/urls/b;->_portIndex:I

    .line 25
    return p1

    .line 26
    .line 27
    :pswitch_4
    iget p1, p0, Lcom/linkedin/urls/b;->_hostIndex:I

    .line 28
    return p1

    .line 29
    .line 30
    :pswitch_5
    iget p1, p0, Lcom/linkedin/urls/b;->_usernamePasswordIndex:I

    .line 31
    return p1

    .line 32
    .line 33
    :pswitch_6
    iget p1, p0, Lcom/linkedin/urls/b;->_schemeIndex:I

    .line 34
    return p1

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/linkedin/urls/c;I)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/b$a;->$SwitchMap$com$linkedin$urls$UrlPart:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :pswitch_0
    iput p2, p0, Lcom/linkedin/urls/b;->_fragmentIndex:I

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :pswitch_1
    iput p2, p0, Lcom/linkedin/urls/b;->_queryIndex:I

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :pswitch_2
    iput p2, p0, Lcom/linkedin/urls/b;->_pathIndex:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :pswitch_3
    iput p2, p0, Lcom/linkedin/urls/b;->_portIndex:I

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :pswitch_4
    iput p2, p0, Lcom/linkedin/urls/b;->_hostIndex:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :pswitch_5
    iput p2, p0, Lcom/linkedin/urls/b;->_usernamePasswordIndex:I

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :pswitch_6
    iput p2, p0, Lcom/linkedin/urls/b;->_schemeIndex:I

    .line 33
    :goto_0
    return-void

    .line 34
    nop

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/linkedin/urls/c;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 5
    return-void
.end method
