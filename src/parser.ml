
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | RPAR
    | OR
    | NOT
    | LT
    | LPAR
    | INEGAL
    | IDENT of (
# 6 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | FORALL
    | FLECHE
    | EXISTS
    | EOF
    | EMPTY
    | EGAL
    | CST of (
# 5 "parser.mly"
       (int)
# 28 "parser.ml"
  )
    | COMMA
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState24
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState7
  | MenhirState5
  | MenhirState2
  | MenhirState1
  | MenhirState0

# 1 "parser.mly"
  
  open Types

# 65 "parser.ml"

let rec _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 244 "parser.ml"
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 268 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 6 "parser.mly"
       (string)
# 273 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 48 "parser.mly"
                            ( Exists(x, e) )
# 279 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv47 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 289 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | OR | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 37 "parser.mly"
                          ( Or(e1, e2) )
# 317 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv53 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 40 "parser.mly"
                          (
      let left = e1 in
      let right = e2 in
      Predicat("<", [])
  )
# 359 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 45 "parser.mly"
                            ( e1 )
# 397 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv65 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv69 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 49 "parser.mly"
                            ( Implies(e1, e2) )
# 435 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv71 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv75 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 38 "parser.mly"
                          ( e1 )
# 473 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv77 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 39 "parser.mly"
                          ( e1 )
# 511 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | OR | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 36 "parser.mly"
                          ( And(e1, e2) )
# 545 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 560 "parser.ml"
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOF | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv93 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 584 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 6 "parser.mly"
       (string)
# 589 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 47 "parser.mly"
                            ( Forall(x, e) )
# 595 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv95 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 605 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv101 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr_simple = 
# 29 "parser.mly"
                    ( e )
# 641 "parser.ml"
             in
            _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)) : 'freshtv102)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv103 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | OR | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 35 "parser.mly"
                          ( Not(e) )
# 675 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EGAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 18 "parser.mly"
      (Types.formule)
# 707 "parser.ml"
            ) = 
# 23 "parser.mly"
             ( e )
# 711 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 18 "parser.mly"
      (Types.formule)
# 719 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 18 "parser.mly"
      (Types.formule)
# 727 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 18 "parser.mly"
      (Types.formule)
# 735 "parser.ml"
            )) : (
# 18 "parser.mly"
      (Types.formule)
# 739 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv114)) : 'freshtv116)) : 'freshtv118)) : 'freshtv120)) : 'freshtv122)
        | FLECHE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | INEGAL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)

and _menhir_goto_expr_simple : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr_simple -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_expr_simple) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_expr_simple) : 'tv_expr_simple) = _v in
    ((let _v : 'tv_expr = 
# 34 "parser.mly"
                          ( e )
# 771 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 818 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 827 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 899 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 6 "parser.mly"
       (string)
# 909 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 913 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr_simple = 
# 28 "parser.mly"
                    ( Predicat(x, []) )
# 918 "parser.ml"
     in
    _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 934 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | EMPTY ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | FORALL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | IDENT _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | LPAR ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | NOT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 978 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | EMPTY ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | FORALL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | IDENT _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | LPAR ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | NOT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let e = () in
    let _v : 'tv_expr_simple = 
# 30 "parser.mly"
                    ( Vide )
# 1020 "parser.ml"
     in
    _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (int)
# 1027 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 5 "parser.mly"
       (int)
# 1037 "parser.ml"
    )) : (
# 5 "parser.mly"
       (int)
# 1041 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr_simple = 
# 27 "parser.mly"
                    ( Predicat(string_of_int n, []) )
# 1046 "parser.ml"
     in
    _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 18 "parser.mly"
      (Types.formule)
# 1065 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EMPTY ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FORALL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LPAR ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 1106 "parser.ml"
