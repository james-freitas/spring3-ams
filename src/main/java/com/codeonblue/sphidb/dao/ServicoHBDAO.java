package com.codeonblue.sphidb.dao;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.codeonblue.sphidb.model.Servico;

@Service
@Primary
public class ServicoHBDAO extends HBDAO<Servico>  implements ServicoDAO{

	@Override
	protected Class getClazz() {
		return Servico.class;
	}
}
